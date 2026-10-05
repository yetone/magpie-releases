class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.965/magpie-cli-darwin-arm64"
      sha256 "2cfff048b5ff04588f326eb702d17a853652af122cd0182ea2d3d5fd00c93bc9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.965/magpie-cli-darwin-amd64"
      sha256 "ebc86e9c192f105f7c4c218fd96ee6d77c0f8c6acd0190745e2c89b73fe9987c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.965/magpie-cli-linux-arm64"
      sha256 "aad9b0fa366278c1f030086708006c5de48294409e408803522227dba76dba8b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.965/magpie-cli-linux-amd64"
      sha256 "e9c27a763a65912f41f53226823ebaa5da13554fb37e6b91229309f638c0007b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
