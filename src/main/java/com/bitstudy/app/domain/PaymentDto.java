package com.bitstudy.app.domain;

public class PaymentDto {
    private int ps_count;
    private int ps_size;
    private int p_seqnoFk;

    public PaymentDto() {
    }
    public PaymentDto(int ps_count, int ps_size, int p_seqnoFk) {
        this.ps_count = ps_count;
        this.ps_size = ps_size;
        this.p_seqnoFk = p_seqnoFk;
    }

    public int getPs_count() {
        return ps_count;
    }

    public void setPs_count(int ps_count) {
        this.ps_count = ps_count;
    }

    public int getPs_size() {
        return ps_size;
    }

    public void setPs_size(int ps_size) {
        this.ps_size = ps_size;
    }

    public int getP_seqnoFk() {
        return p_seqnoFk;
    }

    public void setP_seqnoFk(int p_seqnoFk) {
        this.p_seqnoFk = p_seqnoFk;
    }

    @Override
    public String toString() {
        return "PaymentDto{" +
                "ps_count=" + ps_count +
                ", ps_size=" + ps_size +
                ", p_seqnoFk=" + p_seqnoFk +
                '}';
    }
}
