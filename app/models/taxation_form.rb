# frozen_string_literal: true

class TaxationForm < ApplicationRecord
  belongs_to :organization_form
  has_many :activities, dependent: :destroy
  has_many :calculation_forms, class_name: 'Taxes::CalculationForm', dependent: :destroy
  has_many :constraints, dependent: :destroy
  belongs_to :declaration_period, class_name: 'RecurrencePeriod'
  belongs_to :payment_period, class_name: 'RecurrencePeriod'
  has_one :hint, as: :hint_owner, dependent: :destroy
  has_and_belongs_to_many :activity_types
end
