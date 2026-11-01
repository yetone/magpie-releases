class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2599/magpie-cli-darwin-arm64"
      sha256 "54cc3fa890b69deae140a3b5801f9336d673c2113fc4630e4910f8de8597ef6a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2599/magpie-cli-darwin-amd64"
      sha256 "871d9bcf921034f071e739bcc8eb3c37ae2a28d1260aefab55960d5e46d99364"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2599/magpie-cli-linux-arm64"
      sha256 "361610fcc37d250fff1482be4eff1e3789310b4e1a97e033cfa3085c357f10c6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2599/magpie-cli-linux-amd64"
      sha256 "d8523f768095097011f8ead1e115ab42ea57943ca28c3f28014bf75be6fb31b9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
