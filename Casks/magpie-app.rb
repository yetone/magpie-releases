cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4761"
  sha256 arm:   "93259b30fe24faaa84b60a3b536fe7710a23846a49ceb251a3962ee69b61244f",
         intel: "403658159f18076245a95cb0b92264978664fa408e261dc73321138aa9deef6e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
