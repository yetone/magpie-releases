cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3199"
  sha256 arm:   "205879ef15fb0d52c1368c4e6f3f7f04bd3ddd17cf23d60efddf972a19e0c83a",
         intel: "22e9b3aca1b5aa22d72f6f6460cd76de5f3198c16a5fbb00085e75e089e535c6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
