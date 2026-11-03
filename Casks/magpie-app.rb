cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2792"
  sha256 arm:   "d90f725d926907fe5fa36e871c21c3bab4316299f54c4762db27f62b95955bef",
         intel: "99c7eee2d69e77013d7990e9616450888a42e610adf753ee3159be24b462ab02"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
