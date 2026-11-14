cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4171"
  sha256 arm:   "732b007735185b357a02e0ce932ca0f0fffc82cbecde4978dfbfdf3992db8ec7",
         intel: "6f5b35ec5690d07e86b0b56467430c2aa242d1fe0a552ca1495b1e57712b6b99"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
