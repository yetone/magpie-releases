class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3628/magpie-cli-darwin-arm64"
      sha256 "fb485d374753b188953bbe80305b4669a5abaf506c87e290a1b151314480a4a9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3628/magpie-cli-darwin-amd64"
      sha256 "3a793fb04b5dd321da98acd4c62a2ddb485d97ebba65d32a829ce184933c1f53"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3628/magpie-cli-linux-arm64"
      sha256 "cafb42ca21f4c31cf1437a6dc6c0698dd08f3fe807f8f5d9a87c0b13722f3b1d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3628/magpie-cli-linux-amd64"
      sha256 "06e4e649b60cb493202cadff2571370013f45c3c7baebe73cc3f70b94d0b6a31"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
