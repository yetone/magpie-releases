cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3972"
  sha256 arm:   "ad69455457b74972da6a1859fa13fb63e402e40caef031dfec48521eeb59da02",
         intel: "da09ee822ef87e044f3bc7a25c92af0c9e9089529082245b15a798aeb47a9b8d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
