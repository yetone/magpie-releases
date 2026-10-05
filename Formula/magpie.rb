class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.985/magpie-cli-darwin-arm64"
      sha256 "c7c09e0f2065322590e701c9bca5214d4179aa7caeff86bedb812a9e8b5feb9b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.985/magpie-cli-darwin-amd64"
      sha256 "dc4151bdc5047937c35b559880c626e495dd40f2aa4416ea71fdc9275a3b2037"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.985/magpie-cli-linux-arm64"
      sha256 "452c7a4102b556a04a08681d8aa603a035914c35cb7b040ed518ddd0555ae8e5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.985/magpie-cli-linux-amd64"
      sha256 "242806760c749ba94c6acbbea0c957e21ea41fc255925ca714873fd33f27cec8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
