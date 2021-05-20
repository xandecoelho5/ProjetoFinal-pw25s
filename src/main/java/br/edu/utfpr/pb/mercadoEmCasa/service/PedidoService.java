package br.edu.utfpr.pb.mercadoEmCasa.service;

import br.edu.utfpr.pb.mercadoEmCasa.model.Pedido;

import java.util.List;

public interface PedidoService extends CrudService<Pedido, Long> {
    List<Pedido> findAllByClienteId(Long clienteId);
}
