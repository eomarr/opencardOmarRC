@CompraWeb
Feature: Flujo de compra en demoblaze

  @Compra
  Scenario Outline: Validar que un usuario registrado pueda realizar una compra en abstracta

    Given Usuario se logueo en opencart.abstracta
    When agrego <cantProds> productos de la categoria <categoria>

    And visualizo el carrito
    And completo el 'Checkout' como invitado: 'Guest Checkout'
      | FirstName | LastName  | Email                    | Telefono  | Company | Address         | City | PostCode | Country | Region |
      | Omar      | Rodriguez | OmarRodriguez@correo.com | 962955000 | Peru123 | Av. Brasil 1000 | LIMA | Lima19   | Peru    | Lima   |
    Then finalizo la compra
    And visualizo la confirmación: <validacion>
    Examples:
      | cantProds | categoria     | validacion                  |
      | 2         | Phones & PDAs | Your order has been placed! |








