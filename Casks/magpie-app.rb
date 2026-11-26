cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4832"
  sha256 arm:   "509f680dbebf6aecdf1202f272eeaf685ddddee3ca431929c2e9aa9bb87ee4f2",
         intel: "d0c55a6514b2d5a138e31098feb759f21f95c65ea2460bd890ca2d8bc9de47f7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
