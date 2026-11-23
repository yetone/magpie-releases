class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4695/magpie-cli-darwin-arm64"
      sha256 "8287dfb8b7a3e81cdea3496a88f14c7cee7fb54c007dae51bd573447f704bc00"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4695/magpie-cli-darwin-amd64"
      sha256 "99df69bd8ad0d7f1c0521378f2c4cbe75fc8429f92d9e466e9ccb28960344808"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4695/magpie-cli-linux-arm64"
      sha256 "37de1af39c0c72b5f16a16a0f67c8fac32fe6927ede31b0bf196c522f0d74bd1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4695/magpie-cli-linux-amd64"
      sha256 "d871c69c852ddcd3efbe43ac6281569e7ffe7eb5033408e472e0e0db02bd4770"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
