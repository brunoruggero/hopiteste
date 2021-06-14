package br.com.hopiteste.model;

import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import br.com.hopiteste.rn.ConverteDataEnParaCalendar;
import br.com.olimposistema.aipa.imagem.Imagem;
import br.com.olimposistema.aipa.model.Model;

@Entity
public class Usuario extends Model{
	
	@NotEmpty(message = "{usuario.nome.notempty}") @Size(min = 5, max = 100, message = "{usuario.nome.size}")
	private String nome;
	
	@NotEmpty(message = "{usuario.email.notempty}") @Email @Column(unique = true)
	private String email;
	
	//message="RG já cadastrado."
	@NotEmpty(message = "{usuario.rg.notempty}") @Size(max = 12,  message = "{usuario.rg.size}") @Column(unique = true)
	private String rg;
	
	@NotEmpty(message = "{usuario.telefone.notempty}")
	private String telefone;
	
	@NotEmpty(message = "{usuario.cidade.notempty}")
	private String cidade;
	
	@Temporal(TemporalType.DATE) @NotNull(message = "{usuario.dtInicial.notnull}")
	private Calendar dtInicial;
	
	@Temporal(TemporalType.DATE) @NotNull(message = "{usuario.dtFinal.notnull}")
	private Calendar dtFinal;
	
	@OneToOne(cascade = {CascadeType.PERSIST, CascadeType.MERGE, CascadeType.REMOVE}, fetch = FetchType.EAGER, orphanRemoval = true)
	private Imagem imagem;
	
	/*public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}*/
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getRg() {
		return rg;
	}
	public void setRg(String rg) {
		this.rg = rg;
	}
	public String getTelefone() {
		return telefone;
	}
	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	public String getCidade() {
		return cidade;
	}
	public void setCidade(String cidade) {
		this.cidade = cidade;
	}
	public Calendar getDtInicial() {
		return dtInicial;
	}
	
	public String getDtInicialFormatada() {
		String dtInicialFormatada = new SimpleDateFormat("dd/MM/yyyy").format(dtInicial.getTime());
		return dtInicialFormatada;
	}
	
	public void setDtInicial(Calendar dtInicial) {
		this.dtInicial = dtInicial;
	}
	
	public void setDtInicialEn(String data) {
		if(data == null) return;
		this.dtInicial = new ConverteDataEnParaCalendar().executa(data);
	}
	
	public Calendar getDtFinal() {
		return dtFinal;
	}
	
	public String getDtFinalFormatada() {
		String dtFinalFormatada = new SimpleDateFormat("dd/MM/yyyy").format(dtFinal.getTime());
		return dtFinalFormatada;
	}
	
	
	public void setDtFinal(Calendar dtFinal) {
		this.dtFinal = dtFinal;
	}
	
	public void setDtFinalEn(String data) {
		if(data == null) return;
		this.dtFinal = new ConverteDataEnParaCalendar().executa(data);
	}
	
	public Imagem getImagem() {
		return imagem;
	}
	public void setImagem(Imagem imagem) {
		this.imagem = imagem;
	}
	
	
}

