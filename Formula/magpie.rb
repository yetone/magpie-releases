class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.934/magpie-cli-darwin-arm64"
      sha256 "84ca6ef6ec0c23f9352ff982512d872e54908c1658729be0474e7c6d3380328c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.934/magpie-cli-darwin-amd64"
      sha256 "f889d0b624350095a6b9c507560f8f1d89baea0f97b2e6e0e75389babd8123d6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.934/magpie-cli-linux-arm64"
      sha256 "6660f8b9da4d7790a2ceeabee8e67881e19ffd8e1e7410cb435471da54d6f025"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.934/magpie-cli-linux-amd64"
      sha256 "4a615d6fe58ab3576ff1b82afdb568439d6f71557269de77d61027ba0943ca55"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
