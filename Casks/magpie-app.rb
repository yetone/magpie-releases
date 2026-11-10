cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3504"
  sha256 arm:   "51fb16928475a949c33499f81bc7c14f95181400653a35b3b7edc53937b78426",
         intel: "b22be485b64a6c535c7fcb26daba7a82ec4f6b49c9c238a008e9033767fe20a7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
