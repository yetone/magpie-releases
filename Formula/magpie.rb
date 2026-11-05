class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3050/magpie-cli-darwin-arm64"
      sha256 "85890fdf9f9941430a26f616ae0bf6a6dbc354b0428afd61dedfa8f599b5a5f0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3050/magpie-cli-darwin-amd64"
      sha256 "a5b71f34365cf91a25b9a451a1bb8bee93b35172ef606440893ad4da5eb332e6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3050/magpie-cli-linux-arm64"
      sha256 "fbe399d7715652e744994ee24c38381c43e962e1d6dbc673ed80a8eaa8af7972"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3050/magpie-cli-linux-amd64"
      sha256 "c803d220e36e8bab93bc5eb4ff9617c60e12405ad40a51815a9840393b5dd4f8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
