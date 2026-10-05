class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1058/magpie-cli-darwin-arm64"
      sha256 "8397ec71cb76ab2672dd99faf443f83cd75f8438f512998cfb3d2b25255ae65d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1058/magpie-cli-darwin-amd64"
      sha256 "bc2485ed018e5ec39e454d210421233657aae5013afcae54379e6b0c6a491a17"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1058/magpie-cli-linux-arm64"
      sha256 "5605804c080d0535ee84fa263b2a65ea788dc29498eda3f8844ebbd03c8ed8ac"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1058/magpie-cli-linux-amd64"
      sha256 "caa31d5baf7a0c8eeac15f38484d419194a9e38b62eef2576d530d51363d9243"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
