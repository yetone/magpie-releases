cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4597"
  sha256 arm:   "2f151cef5cf1b3b711dd17160de301dc91187eb3edfcdc1c02540d7c06e9a843",
         intel: "707cbce02bf817b18628ee23593977276e14967b958237aed74db952e25e0405"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
