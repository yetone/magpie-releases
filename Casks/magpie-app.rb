cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4220"
  sha256 arm:   "d92160d42ad407b7a949ee576a1adf6a9f86bb751f4ab3b884d50df9da3f0354",
         intel: "a6ef642f6e049b5e51eb3f0a5e596955db39925bde9ee8210cd5117c32cb8747"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
