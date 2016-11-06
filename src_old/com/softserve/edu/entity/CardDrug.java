package com.softserve.edu.entity;

import javax.persistence.*;

@Entity
@Table(name = "cards_drugs")
public class CardDrug {
    
	@Id
	@Column(name = "id_card_drug")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer idCardDrug;
	
	@ManyToOne
	@JoinColumn(name = "id_card", nullable=false)
	private Card card;
	@ManyToOne
	@JoinColumn(name = "id_drug", nullable=false)
	private Drug drug;

	public CardDrug() {
	    
	}
	
	public CardDrug(Card card, Drug drug) {
	    this.card = card;
	    this.drug = drug;
	}

    public Integer getIdCardDrug() {
        return idCardDrug;
    }

    public void setIdCardDrug(Integer idCardDrug) {
        this.idCardDrug = idCardDrug;
    }

    public Card getCard() {
        return card;
    }

    public void setCard(Card card) {
        this.card = card;
    }

    public Drug getDrug() {
        return drug;
    }

    public void setDrug(Drug drug) {
        this.drug = drug;
    }
}
