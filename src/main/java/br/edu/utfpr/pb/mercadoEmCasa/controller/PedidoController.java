package br.edu.utfpr.pb.mercadoEmCasa.controller;

import br.edu.utfpr.pb.mercadoEmCasa.model.*;
import br.edu.utfpr.pb.mercadoEmCasa.service.ClienteService;
import br.edu.utfpr.pb.mercadoEmCasa.service.PedidoItemService;
import br.edu.utfpr.pb.mercadoEmCasa.service.PedidoService;
import br.edu.utfpr.pb.mercadoEmCasa.service.SituacaoService;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;
import java.time.LocalDate;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("pedido")
public class PedidoController {

    @Autowired
    private PedidoService pedidoService;

    @Autowired
    private PedidoItemService pedidoItemService;

    @Autowired
    private ClienteService clienteService;

    @Autowired
    private SituacaoService situacaoService;

    @GetMapping
    public String list(Model model) {
        model.addAttribute("pedidos", pedidoService.findAll());
        return "pedido/list";
    }

    @GetMapping(value = {"new", "novo", "form"})
    public String form(Model model) {
        model.addAttribute("pedido", new Pedido());
        return "pedido/form";
    }

    @PostMapping
    public ResponseEntity<?> save(@RequestBody @Valid Map<String, Object> json, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }

        ObjectMapper mapper = new ObjectMapper();
        Pedido pedido = mapper.convertValue(json.get("pedido"), Pedido.class);

        Usuario u = (Usuario) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        Cliente c = clienteService.findClienteByUsuarioId(u.getId());
        pedido.setCliente(c);
        pedido.setDataPedido(LocalDate.now());
        pedido.setDataAlteracao(LocalDate.now());
        pedido.setSituacao(situacaoService.findOne(1L));
        pedidoService.save(pedido);

        //Percorrer os itemsPedido e salvar o código do pedido
        List<Map<String, Object>> pedidoItems = mapper.convertValue(json.get("pedidoItem"), new TypeReference<List<Map<String, Object>>>() {
        });
        pedidoItems.forEach((pedidoItem) -> {
            PedidoItem p = mapper.convertValue(pedidoItem, PedidoItem.class);
            p.setPedido(pedido);
            pedidoItemService.save(p);
        });

        return new ResponseEntity<>(HttpStatus.OK);
    }

    @GetMapping("{id}")
    public String form(@PathVariable Long id, Model model) {
        model.addAttribute("pedido", pedidoService.findOne(id));
        return "pedido/form";
    }

    @DeleteMapping("{id}")
    public String delete(@PathVariable Long id, RedirectAttributes attributes) {
        try {
            pedidoService.delete(id);
            attributes.addFlashAttribute("sucesso", "Registro removido com sucesso!");
        } catch (Exception e) {
            attributes.addFlashAttribute("erro", "Falha ao remover o registro!");
        }
        return "redirect:/pedido";
    }
}