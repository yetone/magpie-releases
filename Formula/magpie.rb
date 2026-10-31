class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2285/magpie-cli-darwin-arm64"
      sha256 "cd0ae8c1af8aa42ef4b97494f1d62ebaa9164700ee18378baa3a808ae82db813"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2285/magpie-cli-darwin-amd64"
      sha256 "6516ce8169d1ec85a34da7537ef49a675735c0e32a5a60c5a3c2d8471d4bc38f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2285/magpie-cli-linux-arm64"
      sha256 "2f4095e3994436c9c9121e4e5f8bd654a1b14f119bfd8d6725d22fa0693ade4a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2285/magpie-cli-linux-amd64"
      sha256 "0f3bbdb0995fb490512ba74533d641e13e1570f0e9d82e9b1e0867057c5978f2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
