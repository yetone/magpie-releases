class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2401/magpie-cli-darwin-arm64"
      sha256 "9d922c335455f210add8bdb9d9b6ed8826b74391838dd90ae576dc61c30dd92a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2401/magpie-cli-darwin-amd64"
      sha256 "2d88319d121ad5ae58856f000633aa2878fe658bd513491c3df6753d6fbf9369"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2401/magpie-cli-linux-arm64"
      sha256 "26595e333ec6ea1b4715a983a611040129a9267297d65d6a3c3eaea4218d7bf1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2401/magpie-cli-linux-amd64"
      sha256 "05a37a1937e095a7041841e41e97853d3bfc748d0d8564f7892b05430c9e9c56"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
