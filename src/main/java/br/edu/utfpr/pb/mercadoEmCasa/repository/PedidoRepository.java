package br.edu.utfpr.pb.mercadoEmCasa.repository;

import br.edu.utfpr.pb.mercadoEmCasa.model.Pedido;
import br.edu.utfpr.pb.mercadoEmCasa.model.PedidoItem;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface PedidoRepository extends JpaRepository<Pedido, Long> {
    List<Pedido> findAllByClienteId(Long clienteId);
}
