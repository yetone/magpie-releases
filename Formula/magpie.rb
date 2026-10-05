class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1006/magpie-cli-darwin-arm64"
      sha256 "6ce92f8691237efce2dcbbee36a73cfa36b06e1fc48c1f1c2c5c06b61bcf4dfb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1006/magpie-cli-darwin-amd64"
      sha256 "a5fd85ff1575461c21ec35c05fc1e3d365762519ad3ac0adc438da511af5a500"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1006/magpie-cli-linux-arm64"
      sha256 "76ae58b9cd1e57fe8b8e0588e6412680683472c2489d4109bd022dcf232d76ef"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1006/magpie-cli-linux-amd64"
      sha256 "addf019f9193fa0c92a6553d2bfa08dad36a51018c64efb0683ba285737b45ce"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
