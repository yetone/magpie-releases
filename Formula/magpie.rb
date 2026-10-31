class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2319/magpie-cli-darwin-arm64"
      sha256 "1b4b65ebae7a198f9aca5f80e42df98237129f01533f0e8df671b0b347abec72"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2319/magpie-cli-darwin-amd64"
      sha256 "483a5b3ad19e02d5f8f09ad6384a5ebdb3ce259128f9ee40a226c8041ad8afc3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2319/magpie-cli-linux-arm64"
      sha256 "99f494688e6836a9c649f2e43f543b56adb96a39c75c92aa7b4323d2539719ac"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2319/magpie-cli-linux-amd64"
      sha256 "c1a3213b1c0ebdc50267aa6e125c0899b2faf1a989caec304590888c7ea94a6b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
