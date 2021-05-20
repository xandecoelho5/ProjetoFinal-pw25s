package br.edu.utfpr.pb.mercadoEmCasa.repository;

import br.edu.utfpr.pb.mercadoEmCasa.model.Situacao;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SituacaoRepository extends JpaRepository<Situacao, Long> {
}
