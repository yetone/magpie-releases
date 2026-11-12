cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3866"
  sha256 arm:   "06baaead1569a4ef71c4db990683e65e93802588ce679fad8a9eb3de530b2ba2",
         intel: "31ea45d0938745466214b87c6e88d63f59278b1fdc52626502bca9f21c65e037"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
