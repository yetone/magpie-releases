class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.129/magpie-cli-darwin-arm64"
      sha256 "b5d174f794d5bf29d3f815a2930959e2ab2c5567813c141bcedae5c981a85a27"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.129/magpie-cli-darwin-amd64"
      sha256 "7ab12300ec0195576e4b72f18471de97639474a8ce7f111a29062f8d44a0d889"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.129/magpie-cli-linux-arm64"
      sha256 "e8e0fdb768e8a7935da6b28dfa342f939aef0c77401de654b38eecd304dbc745"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.129/magpie-cli-linux-amd64"
      sha256 "5ccb6868b0136039ac0efc5502c22ce4433f376daf1d3e4f1d9985e800bb0d49"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
