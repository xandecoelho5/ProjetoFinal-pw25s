package br.edu.utfpr.pb.mercadoEmCasa.service.impl;

import br.edu.utfpr.pb.mercadoEmCasa.model.Situacao;
import br.edu.utfpr.pb.mercadoEmCasa.repository.SituacaoRepository;
import br.edu.utfpr.pb.mercadoEmCasa.service.SituacaoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

@Service
public class SituacaoServiceImpl extends CrudServiceImpl<Situacao, Long>  implements SituacaoService {

    @Autowired
    private SituacaoRepository situacaoRepository;

    @Override
    protected JpaRepository<Situacao, Long> getRepository() {
        return situacaoRepository;
    }
}
