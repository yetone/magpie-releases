class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4718/magpie-cli-darwin-arm64"
      sha256 "11766b1f45f9b472f7de2b975856ab298d2211daccea45dad90117ef1ab33a5e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4718/magpie-cli-darwin-amd64"
      sha256 "6e44a95ead6be46a9d6abb9d6149be27a2404fa51112966f47770c1176c68001"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4718/magpie-cli-linux-arm64"
      sha256 "5616935511d07529bfc9eefb7ea892a3fef26f5c6814122dc5a960bda8ef26b6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4718/magpie-cli-linux-amd64"
      sha256 "99fc5879359ff72f14d8c16dd7469d8ed17253a8b065651e31d1a6afa5808f7c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
