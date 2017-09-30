require "java"

java_import java.lang.Long , java.lang.Double, java.lang.Boolean
java_import java.awt.event.ActionListener

if not defined? JavaInteger
  JavaInteger = java.lang.Integer
end

if not defined? JavaString
  JavaString = java.lang.String
end

module JavaGUI
  include_package "java.awt"
  include_package "javax.swing"
end

class JavaSwingExample
  def example1()
    CustomFrame.new
  end

  class CustomFrame < JavaGUI::JFrame
    def initialize()
      super   # important to call
      self.initGUI
    end

    def initGUI()
      self.setTitle "Swing Form Example"
      self.setSize JavaGUI::Dimension.new 500, 500
      self.setLocation JavaGUI::Point.new 10  , 10
      self.setDefaultCloseOperation JavaGUI::WindowConstants::EXIT_ON_CLOSE
      self.addComponents
      self.registerEvents
      self.setVisible true
    end

    def addComponents()
      # mainPanel
      @mainPanel = JavaGUI::Panel.new JavaGUI::GridLayout.new 7, 2, 3, 3
      self.getContentPane.add @mainPanel
      # title
      @lblEmpty =  JavaGUI::JLabel.new ""
      @lblTitle = JavaGUI::JLabel.new "Simple Swing Form"
      @mainPanel.add @lblEmpty
      @mainPanel.add @lblTitle

      # id
      @lblId = JavaGUI::JLabel.new "Id: "
      @fieldId = JavaGUI::JTextField.new
      @mainPanel.add @lblId
      @mainPanel.add @fieldId

      # name
      @lblName = JavaGUI::JLabel.new "Name: "
      @fieldName = JavaGUI::JTextField.new
      @mainPanel.add @lblName
      @mainPanel.add @fieldName

      # age
      @lblAge = JavaGUI::JLabel.new "Age: "
      @fieldAge = JavaGUI::JTextField.new
      @mainPanel.add @lblAge
      @mainPanel.add @fieldAge

      # wage
      @lblWage = JavaGUI::JLabel.new "Wage: "
      @fieldWage = JavaGUI::JTextField.new
      @mainPanel.add @lblWage
      @mainPanel.add @fieldWage

      # active
      @lblActive = JavaGUI::JLabel.new "Active: "
      @fieldActive = JavaGUI::JTextField.new
      @mainPanel.add @lblActive
      @mainPanel.add @fieldActive

      # buttons
      @btnOk = JavaGUI::JButton.new "Ok"
      @btnClear = JavaGUI::JButton.new "Clear"
      @mainPanel.add @btnOk
      @mainPanel.add @btnClear

    end

    def registerEvents()
      @btnOk.addActionListener OkBtnListener.new @fieldId, @fieldName,
                                                 @fieldAge, @fieldWage,
                                                 @fieldActive

      @btnClear.addActionListener ClearBtnListener.new @fieldId, @fieldName ,
                                                       @fieldAge, @fieldWage,
                                                       @fieldActive
    end

    class OkBtnListener
        include ActionListener

      def initialize(fieldId, fieldName, fieldAge, fieldWage, fieldActive)
        @fieldId = fieldId
        @fieldName = fieldName
        @fieldAge = fieldAge
        @fieldWage = fieldWage
        @fieldActive = fieldActive
      end
      def actionPerformed e
        begin
          id = Long.parseLong @fieldId.getText
          name = JavaString.valueOf @fieldName.getText
          age = JavaInteger.parseInt @fieldAge.getText
          wage = Double.parseDouble @fieldWage.getText
          active = Boolean.parseBoolean @fieldActive.getText
          str = <<EOF
id = #{id}
name = #{name}
age = #{age}
wage = #{wage}
active = #{active}
EOF
          # puts str

          title = "<<Information>>"
          JavaGUI::JOptionPane::showMessageDialog nil, str, title, JavaGUI::JOptionPane::INFORMATION_MESSAGE

        rescue java.lang.Exception => ex
          # puts ex.message
          str = ex.message
          title = "<<Error>>"
          JavaGUI::JOptionPane::showMessageDialog nil, str, title, JavaGUI::JOptionPane::ERROR_MESSAGE
        end
      end

    end



    class ClearBtnListener
      include ActionListener
      def initialize(fieldId , fieldName, fieldAge, fieldWage, fieldActive)
        @fieldId = fieldId
        @fieldName = fieldName
        @fieldAge = fieldAge
        @fieldWage = fieldWage
        @fieldActive = fieldActive
      end

      def actionPerformed e
        @fieldId.setText ""
        @fieldName.setText ""
        @fieldAge.setText ""
        @fieldWage.setText ""
        @fieldActive.setText ""
      end
    end



  end



end