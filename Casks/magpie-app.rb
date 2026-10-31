cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2342"
  sha256 arm:   "7bf60abd1cc8c4bfa4b4f8dce91663b078879e61a4efc671e1e192599deebfa4",
         intel: "d857fd9855a7e39d5f0b1a01b83c32b89474c12c581885eefcfbab7e642229b6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
