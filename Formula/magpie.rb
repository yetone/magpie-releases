class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2259/magpie-cli-darwin-arm64"
      sha256 "d1860f2a418cbd4b36464269604cb15d88e7a33902bc93981d9c217d50882e1c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2259/magpie-cli-darwin-amd64"
      sha256 "c5f9783ee7108e83a52957d1cf14cae43b021b0d37027afcc7081bd2ac2464a4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2259/magpie-cli-linux-arm64"
      sha256 "32d562c31a4e1da6b72282326c23ac72c907ace8fa46862fa726f54d76561526"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2259/magpie-cli-linux-amd64"
      sha256 "6734c3891d86dc84ca27231621f569254f4f2845add82e01f5832577d6cbf7e4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
