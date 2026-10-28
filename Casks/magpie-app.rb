cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1873"
  sha256 arm:   "c01b04068cda89f663b2b1557a17cfb41bece5298cda663560cfd8a0deeac64a",
         intel: "95ed31ab8e1200d116b407a0fff904da16316425efb427bd87493b68e770de96"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
