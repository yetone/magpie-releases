class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2278/magpie-cli-darwin-arm64"
      sha256 "bc7513bdc023599001d1e80ee35a6cdc729eca2b0d898b81fc4026fb9941d530"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2278/magpie-cli-darwin-amd64"
      sha256 "1e2a87c1c564be871921d23af81f5db1723e81df745856777c357f7b67e53746"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2278/magpie-cli-linux-arm64"
      sha256 "7f3c1034bae92e0f29bb06ee86f1edfabd8c00a9575393a06539991d4a99fdcf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2278/magpie-cli-linux-amd64"
      sha256 "b8226c056476324939b6a10c1e32f24ca4f97dc68a1085a436894e79da0d80db"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
