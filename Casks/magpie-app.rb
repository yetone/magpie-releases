cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1993"
  sha256 arm:   "05b7be226ce4780d8892410d7f11fb289a8809f9c3dca9228757a9ad862a157d",
         intel: "84ed8673b75605a8fa14ab66a0f499f4436aa8b35c89eb3e91b12dbe8702060c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
