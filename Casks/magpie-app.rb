cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1953"
  sha256 arm:   "dc63b8b5883c7f4e7aed5420e51b3b30769b563c5c6c70674897bb22f3159459",
         intel: "0f2e627c7884bca043b6ca193a3f5360e541a975685e04a1ce25df02f171e2cf"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
