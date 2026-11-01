class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2559/magpie-cli-darwin-arm64"
      sha256 "71f3838ca3da8fba719a9a9aa126d63156bd2a4844f850f53c7e0556e10bbadc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2559/magpie-cli-darwin-amd64"
      sha256 "733191a88cedde10aeb1fa9c95da58b6cfee07e0fd4d2b50512da2915cf612da"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2559/magpie-cli-linux-arm64"
      sha256 "d711e6fe2e22284b36c567b0320ec4043f8c3747044bd8c8dd18ec58b77f0ca6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2559/magpie-cli-linux-amd64"
      sha256 "4dba83dadb031db9be2b289b45c4b05a94f39c67ed6b87171e116dcbf4351ada"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
