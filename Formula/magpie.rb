class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4301/magpie-cli-darwin-arm64"
      sha256 "ca3416664ffc32e669a1618d7230db0cd13f6008176945d7751ab09b64e1268c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4301/magpie-cli-darwin-amd64"
      sha256 "0c54cd39b1ac587c635a16902aa169100720b7b9f3add9c777a2a43c55c387e5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4301/magpie-cli-linux-arm64"
      sha256 "0449e009f0f656023270a90ca91dff672990641dc4922ba7f17c40e8bdfdcf49"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4301/magpie-cli-linux-amd64"
      sha256 "7f8346bfdc1b6a4cf90ad5f284b5419065547db0b937ab05e6a0f6323002d7b2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
