class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2205/magpie-cli-darwin-arm64"
      sha256 "c9c877d3ae02823dfdeae1886701ea5235a0609083994cfebf0d8a3444a3b981"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2205/magpie-cli-darwin-amd64"
      sha256 "4d806d6c5817e9164d867f596d550b1caea3ee85d9d906015b5ba40be821d30a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2205/magpie-cli-linux-arm64"
      sha256 "caf88c677cf64939dbb8a6617170f28d4283b14b2e99a9c84e185a147103658f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2205/magpie-cli-linux-amd64"
      sha256 "0a052566319fadfea324878ff45e2dc0481e150bcf5e03835b870204d057425c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
