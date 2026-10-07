class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1099/magpie-cli-darwin-arm64"
      sha256 "95e842ac4d1621ebeec6e2a43d9abc7a5023d3ca348b305ebba40cd8084826af"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1099/magpie-cli-darwin-amd64"
      sha256 "bd9907ecfedc8a7acc4bbb930a939f07becc0af4eaf78cb7f2600f86b0126472"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1099/magpie-cli-linux-arm64"
      sha256 "78274668a9a83baed2e8f57479488113867b204b64d088804f7dd60d0fd47a0f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1099/magpie-cli-linux-amd64"
      sha256 "394d11ac9acedbbc91c27ed3c62ed282f3b58de2e5e6473f6c6393d2c43fab5e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
