package br.edu.utfpr.pb.mercadoEmCasa.repository;

import br.edu.utfpr.pb.mercadoEmCasa.model.Cliente;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ClienteRepository extends JpaRepository<Cliente, Long> {
    public Cliente findClienteByUsuarioId(Long usuarioId);
}
