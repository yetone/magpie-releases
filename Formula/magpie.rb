class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.924/magpie-cli-darwin-arm64"
      sha256 "be2ac1e4b4b56c800fd5e55d4c34def79fdd970fe2990ad49ff366ecd9b94922"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.924/magpie-cli-darwin-amd64"
      sha256 "e853c17a5226a6fb05cfe0816736ef40116d1968c351b6d380bb9c59947afd5b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.924/magpie-cli-linux-arm64"
      sha256 "972c4a305e549b1723ba94ad11c6cfda00bcbc8f204a52cc0740d0dc89700a29"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.924/magpie-cli-linux-amd64"
      sha256 "9afea8c2d3605ced7fc8009b79791c0f52c6b9101cae19caf3b12bd0e2675383"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
