Feature: Gestión de gastos
  Como estudiante
  Quiero registrar mis gastos
  Para controlar cuánto dinero gasto

  Scenario: Crear un gasto y comprobar cual es el total que llevo gastado
    Given un gestor de gastos vacío
    When añado un gasto de 5 euros llamado Café
    Then el total de dinero gastado debe ser 5 euros

  Scenario: Eliminar un gasto y comprobar cual es el total que llevo gastado
    Given un gestor con un gasto de 5 euros
    When elimino el gasto con id 1
    Then debe haber 0 gastos registrados

  Scenario: Crear y eliminar un gasto y comprobar que no he gastado dinero
    Given un gestor de gastos vacío
    When añado un gasto de 5 euros llamado Café
    And elimino el gasto con id 1
    Then debe haber 0 gastos registrados

  Scenario: Crear dos gastos diferentes y comprobar que el total que llevo gastado es la suma de ambos
    Given un gestor de gastos vacío
    When añado un gasto de 5 euros llamado Café
    And añado un gasto de 10 euros llamado Comida
    Then el total de dinero gastado debe ser 15 euros

  Scenario: Crear tres gastos diferentes que sumen 30 euros hace que el total sean 30 euros
    Given un gestor de gastos vacío
    When añado un gasto de 10 euros llamado Café
    And añado un gasto de 10 euros llamado Comida
    And añado un gasto de 10 euros llamado Pan
    Then el total de dinero gastado debe ser 30 euros

  Scenario: Crear tres gastos de 10, 30, 30 euros y elimino el ultimo gasto la suma son 40 euros
    Given un gestor de gastos vacío
    When añado tres gastos de 10 euros llamado Café
    And añado un gasto de 30 euros llamado Comida
    And añado un gasto de 30 euros llamado Pan
    And elimino el gasto con id 3
    Then el total de dinero gastado debe ser 40 euros

  Scenario: Crear tres gastos de 10, 30, 30 euros y elimino el ultimo gasto la suma son 40 euros
    Given un gestor de gastos vacío
    When añado un gasto de 10 euros llamado Café
    And añado un gasto de 30 euros llamado Comida
    And añado un gasto de 30 euros llamado Pan
    And elimino el gasto con id 3
    Then el total de dinero gastado debe ser 40 euros
  
  Scenario: Crear dos gastos diferentes y comprobar que el total del mes actual sume 30 euros
    Given un gestor de gastos vacío
    When añado un gasto de 10 euros llamado Café
    And añado un gasto de 20 euros llamado Comida
    Then 2026-03 debe sumar 30 euros
  
  Scenario: Crear dos gastos de de 20, 30 euros, elimino el segundo gasto y comprobar que el total del mes actual sea 20 euros
    Given un gestor de gastos vacío
    When añado un gasto de 20 euros llamado Arroz
    And añado un gasto de 30 euros llamado Pescado
    And elimino el gasto con id 2
    Then 2026-03 debe sumar 20 euros
  
  Scenario: Eliminar un gasto de 20 euros y comprobar el total del mes actual sea de 0 euros
    Given un gestor con un gasto de 20 euros
    When elimino el gasto con id 1
    Then 2026-03 debe sumar 0 euros

