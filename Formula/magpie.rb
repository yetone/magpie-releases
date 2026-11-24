class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4759/magpie-cli-darwin-arm64"
      sha256 "6f7968bb8c227177d0c00f99ce8a3bca05d9399b0b9df75fdb8b40c3bf537b1a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4759/magpie-cli-darwin-amd64"
      sha256 "3bfc0fafc52faebab4c79eedbccb28e3b6850e409c4a5067e07804e92e4ad236"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4759/magpie-cli-linux-arm64"
      sha256 "0fb87a639a6aa31da82a5d46545424689aca1ac8bcd5040513ee7a3edad037a3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4759/magpie-cli-linux-amd64"
      sha256 "ddc0ce49667d998bdf44c504e8a708461bbdc9d25df44992571e8ceb920c89dd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
