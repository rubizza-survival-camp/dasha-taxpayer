# frozen_string_literal: true

class TaxationForm < ApplicationRecord
  belongs_to :organization_form
  has_many :organizations, dependent: :destroy
  has_many :calculation_forms, class_name: 'Taxes::CalculationForm', dependent: :destroy

  validates :period_type, inclusion: {in: %w[year quarter month weak]}, presence: true
  validates :declaration_period_in_days, numericality: {only_integer: true}, presence: true
end