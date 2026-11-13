class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4078/magpie-cli-darwin-arm64"
      sha256 "d7f433e58ff34f811d5ada311b943ef76dc16778821b9dece48893d5c725359c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4078/magpie-cli-darwin-amd64"
      sha256 "49796157dbb811c1bde029c1073f9b90879d2e2c00e2a52238e538f510bd155c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4078/magpie-cli-linux-arm64"
      sha256 "c55de16cb0120e3b753ffddbc87b530c7f83f9f059ec4c455a1f5a3340f03225"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4078/magpie-cli-linux-amd64"
      sha256 "8f2ca5f3057de0fd309e244fd04c2a93f00a3a303316c9fba1006a63f7b87356"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
