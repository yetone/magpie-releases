cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4012"
  sha256 arm:   "eda41cff06ff4eff0db8ebb118d3ac1b64aeffaf41c4fd583641cb3e01c53fc6",
         intel: "e00c1502d569040bd8b18dc124dd9b2924b596bbeb413276f7e59982745074ec"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
