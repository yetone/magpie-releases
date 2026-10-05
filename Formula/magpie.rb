class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.974/magpie-cli-darwin-arm64"
      sha256 "c5c53d1a242b2c572ec1cf212ed1b9428f493c66527fd0f96ad83f4cd7c5882d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.974/magpie-cli-darwin-amd64"
      sha256 "53fd75f9e03ce20bcdb0242d0085355dd5a81fb1b1871aae52e6159c1c556fec"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.974/magpie-cli-linux-arm64"
      sha256 "e97f1e07610f7514b1be4e343cc22301953f4e2d64967bc4585272b60073da27"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.974/magpie-cli-linux-amd64"
      sha256 "2f35c703f493176d7bffe42f005963e67f9bb0a0178a2ae85b3d5f7cd65d686a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
