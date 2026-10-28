cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1858"
  sha256 arm:   "77d8fd7818500b0a86cf09737dc97710e3707a982db13bcdd910782b9926543e",
         intel: "f62e35ad16189ba65272d35a13c049c11ec82c239642a288a47f1f27a3b69aa2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
