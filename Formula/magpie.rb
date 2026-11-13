class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3991/magpie-cli-darwin-arm64"
      sha256 "9cba164aef5ba3a7630ba4e7e8947a52b254ed9d69013bdddacbcc849edf3fec"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3991/magpie-cli-darwin-amd64"
      sha256 "fc15d0eeaed13d5b938191c381af976713bb7491ac9fed8e2c7180bf93ca5959"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3991/magpie-cli-linux-arm64"
      sha256 "8ba1976834e3cc907d3894cab5365b499d8e611099e035e1176180b896bd1570"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3991/magpie-cli-linux-amd64"
      sha256 "e2759f7ad3f3644887dc0b18551c3849a4a402b315672e8e12a592c4146b84fe"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
