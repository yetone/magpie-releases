class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2870/magpie-cli-darwin-arm64"
      sha256 "93726da8963490204258db6b9055172a065fab4bb811795a90fe4613c90ae027"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2870/magpie-cli-darwin-amd64"
      sha256 "5dad2b25b8c645bc1488285e1efc55763bae416e4107481da39740dd4ec69682"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2870/magpie-cli-linux-arm64"
      sha256 "683481d3725f1ae378cc8af12d11bfdd79d72f24d59b00e51f145f79216007ef"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2870/magpie-cli-linux-amd64"
      sha256 "3655a5087f842a804c898783815f720860b75de8d3101f3de411f708c3fca73f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
