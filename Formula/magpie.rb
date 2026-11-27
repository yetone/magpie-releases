class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4956/magpie-cli-darwin-arm64"
      sha256 "161d9d308b08b430abd6d42ae12b591e075aad33a8975023fc418ae15c90180a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4956/magpie-cli-darwin-amd64"
      sha256 "a04f00abd6a3a6f9d2bd5af31a3885690158339c996620cc8eabbaf923841dcc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4956/magpie-cli-linux-arm64"
      sha256 "94cc79840a82fe84cc97352876ab31e3a4587225122ec022e6c928e92d128576"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4956/magpie-cli-linux-amd64"
      sha256 "e721d3a661ca35fdf790fa3fbb886d605a1eaa3c6ae8b1fe666679f239713f1a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
