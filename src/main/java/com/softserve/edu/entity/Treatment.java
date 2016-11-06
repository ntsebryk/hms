package com.softserve.edu.entity;

import javax.persistence.*;

import org.hibernate.annotations.ForeignKey;
import org.springframework.format.annotation.DateTimeFormat;

import java.sql.Date;

@Entity
@Table(name = "treatments")
public class Treatment extends BaseEntity {

    @ManyToOne
    @JoinColumn(name = "id_card_record")
    @ForeignKey(name = "none")
    private CardRecord cardRecord;

    @Column(name = "start_date", nullable = false)
    @DateTimeFormat(pattern = "dd.MM.yyyy")
    private Date startedDate;

    @Column(name = "end_date")
    @DateTimeFormat(pattern = "dd.MM.yyyy")
    private Date endedDate;

    // Default empty constructor according to JPA requirement
    public Treatment() {

    }

    public Date getStartedDate() {
        return startedDate;
    }

    public void setStartedDate(Date startedDate) {
        this.startedDate = startedDate;
    }

    public Date getEndedDate() {
        return endedDate;
    }

    public void setEndedDate(Date endedDate) {
        this.endedDate = endedDate;
    }


    public CardRecord getCardRecord() {
        return cardRecord;
    }


    public void setCardRecord(CardRecord cardRecord) {
        this.cardRecord = cardRecord;
    }

}
