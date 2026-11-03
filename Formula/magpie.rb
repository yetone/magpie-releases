class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2810/magpie-cli-darwin-arm64"
      sha256 "c191187c9643ef312f38f4ac77dedc46c2be25e466d14239c28778cba045ca42"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2810/magpie-cli-darwin-amd64"
      sha256 "b680568ab97b9941e4b9714879f860a88f0fd74bf864705dafda024efd47beeb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2810/magpie-cli-linux-arm64"
      sha256 "97cac4f71736e81ebc6a49c28f58f0157946cd30a77122f6f8c76775cce007c8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2810/magpie-cli-linux-amd64"
      sha256 "81300df56fb4c886e06c5a819cba3ad9c52686e8873af74151e29b18a38b5b31"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
