cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.973"
  sha256 arm:   "e84bc58002b0954daec52e4552a2591cf51e259b020b57473df300c9cecc96cd",
         intel: "f6710a0e47ec231ef1d9f6851295a9ef8c88f408c6f42ac96593a8e47fc0dce9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
