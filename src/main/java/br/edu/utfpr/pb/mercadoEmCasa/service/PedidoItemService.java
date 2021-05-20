package br.edu.utfpr.pb.mercadoEmCasa.service;

import br.edu.utfpr.pb.mercadoEmCasa.model.PedidoItem;

import java.util.List;

public interface PedidoItemService extends CrudService<PedidoItem, Long> {
    List<PedidoItem> findAllByPedido_Cliente_Id(Long clienteId);
    List<PedidoItem> findAllByPedidoId(Long pedidoId);
}
