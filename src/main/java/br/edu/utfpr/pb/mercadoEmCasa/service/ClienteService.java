package br.edu.utfpr.pb.mercadoEmCasa.service;

import br.edu.utfpr.pb.mercadoEmCasa.model.Cliente;

public interface ClienteService extends CrudService<Cliente, Long> {
    Cliente findClienteByUsuarioId(Long usuarioId);
}
